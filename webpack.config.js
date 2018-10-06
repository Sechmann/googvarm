const path = require('path')

module.exports = function(env) {
    return {
        entry: './js/app.js',
        output: {
            path: path.resolve(__dirname, 'dist'),
            filename: './dist/bundle.js'
        },
        module: {
            rules: [{
                test: /\.elm$/,
                exclude: [/elm-stuff/, /node_modules/],
                use: {
                    loader: 'elm-webpack-loader',
                    options: {debug: true, warn: true}
                }
            }]
        }
    }
}
