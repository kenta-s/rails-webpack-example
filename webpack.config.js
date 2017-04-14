var path = require('path');
var ManifestPlugin = require('webpack-manifest-plugin');

module.exports = {
  entry: './app/javascript/index.js',
  output: {
    filename: 'bundle.js',
    path: path.resolve(__dirname, 'public/pack')
  },
  plugins: [
    new ManifestPlugin()
  ]
};
