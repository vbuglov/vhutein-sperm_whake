// We need to import the CSS so that webpack will load it.
// The MiniCssExtractPlugin is used to separate it out into
// its own CSS file.
import "../css/app.scss";

// webpack automatically bundles all modules in your
// entry points. Those entry points can be configured
// in "webpack.config.js".
//
// Import deps with the dep name or local files with a relative path, for example:
//
//     import {Socket} from "phoenix"
//     import socket from "./socket"
//
import "phoenix_html";
import { Socket } from "phoenix";
import topbar from "topbar";
import "alpinejs";
import { LiveSocket } from "phoenix_live_view";
import "./spermWhaleStatistic";
import { sData, population } from "./spermWhaleStatistic";
import { icons } from "./map";

let csrfToken = document
  .querySelector("meta[name='csrf-token']")
  .getAttribute("content");

let Hooks = {};

let displayCharData = 10;

let chart = null;

const renderChart = () => {
  if (document.getElementById("myChart")) {
    const labels = population
      .map((_, idx) => 2021 - idx)
      .filter((_, idx) => idx < displayCharData);

    const data = {
      labels: labels,
      datasets: [
        {
          label: "Количество кашалотов в мире (тыч)",
          backgroundColor: "rgb(255, 99, 132)",
          borderColor: "rgb(255, 99, 132)",
          data: population,
        },
      ],
    };

    const config = {
      type: "line",
      data,
      options: {},
    };

    if (!chart) {
      chart = new Chart(document.getElementById("myChart"), config);
    } else {
      chart.data.labels = labels;
      chart.update();
    }
  }
};

Hooks.ChartBuilder = {
  mounted() {
    renderChart();
    this.handleEvent("new_chart_data", ({ data }) => {
      displayCharData = +data;
      renderChart();
    });
  },
  updated() {
    renderChart();
  },
  onclick(v) {
    console.log("i clicked");
  },
};

let radarChart = null;

const renderRadarChart = () => {
  if (document.getElementById("myRadarChart")) {
    const data = {
      labels: [
        "Сердце ",
        "Легкие",
        "Почки",
        "Печень",
        "Мозг",
        "Пищеварительный тракт",
      ],
      datasets: [
        {
          label: "Вес органов кашалота (кг)",
          data: [160, 376, 400, 1000, 6, 800],
          fill: true,
          backgroundColor: "rgba(255, 99, 132, 0.2)",
          borderColor: "rgb(255, 99, 132)",
          pointBackgroundColor: "rgb(255, 99, 132)",
          pointBorderColor: "#fff",
          pointHoverBackgroundColor: "#fff",
          pointHoverBorderColor: "rgb(255, 99, 132)",
        },
      ],
    };

    const config = {
      type: "radar",
      data: data,
      options: {
        responsive: true,
        elements: {
          line: {
            borderWidth: 3,
          },
        },
      },
    };

    if (!radarChart) {
      radarChart = new Chart(document.getElementById("myRadarChart"), config);
      radarChart.canvas.parentNode.style.width = "800px";
    } else {
      radarChart.update();
    }
  }
};

Hooks.ChartRadarBuilder = {
  mounted() {
    renderRadarChart();
    this.handleEvent("new_chart_data", ({ data }) => {
      displayCharData = +data;
      renderRadarChart();
    });
  },
  updated() {
    renderRadarChart();
  },
};

const renderMyMap = () => {
  const mymap = L.map("mapid").setView(
    [sData[0].Latitude, sData[0].Longitude],
    8
  );
  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    attribution:
      '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
  }).addTo(mymap);

  sData.map(({ Latitude, Longitude, Total_individuals, Year_observed, icon }) =>
    L.marker([Latitude, Longitude], { icon: icons[icon] })
      .bindPopup(
        `Шир: ${Latitude}, Дол: ${Longitude}, Число особей: ${Total_individuals}, Год ${Year_observed}`
      )
      .addTo(mymap)
  );
};

const renderAdressMap = () => {
  const mymap = L.map("mapid").setView([60.051898, 30.429301], 17);
  L.tileLayer("https://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png", {
    attribution:
      '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors',
  }).addTo(mymap);

  L.marker([60.051898, 30.429301], { icon: icons.blueIcon })
    .bindPopup(
      ` Число особей: 1, Год 2021, Большая улица 9к2, Почтовый индекс 412313`
    )
    .addTo(mymap);
};

Hooks.MapBuilder = {
  mounted() {
    renderAdressMap();
  },
  updated() {
    renderAdressMap();
  },
};

Hooks.AdressMapBuilder = {
  mounted() {
    renderMyMap();
  },
  updated() {
    renderMyMap();
  },
};

let liveSocket = new LiveSocket("/live", Socket, {
  hooks: Hooks,
  params: { _csrf_token: csrfToken },
});

topbar.config({ barColors: { 0: "#29d" }, shadowColor: "rgba(0, 0, 0, .3)" });
window.addEventListener("phx:page-loading-start", (info) => topbar.show());
window.addEventListener("phx:page-loading-stop", (info) => topbar.hide());

liveSocket.connect();

window.liveSocket = liveSocket;
