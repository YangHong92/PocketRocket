module.exports = {
    apps: [{
      name: "pocketrocket",
      script: "./nodeApp.js",
      env: {
        NODE_ENV: "dev"
      },
      env_production: {
        NODE_ENV: "prod",
      }
    }]
  }
  