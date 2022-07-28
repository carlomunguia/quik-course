const { environment } = require("@rails/webpacker");
const { EnvironmentPlugin } = require("webpack");
const webpack = require("webpack");
environment.plugins.append(
  "Environment",
  new EnvironmentPlugin({
    $: "jquery",
    jQuery: "jquery",
    "window.jQuery": "jquery",
    Popper: ["popper.js", "default"],
  })
);

module.exports = environment;
