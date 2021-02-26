const { environment } = require('@rails/webpacker')

//Customs
const customComfig = require('./customer');
const webpack = require("webpack")

environment.plugins.append("Provide", new webpack.ProvidePlugin({
    $: 'jquery/src/jaquery',
    JQuery: 'jquery/src/jquery',
    Popper: ['popper.js', 'default'],
}));
environment.config.merge(customComfig);

module.exports = environment
