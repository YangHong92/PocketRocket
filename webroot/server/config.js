const dbClient = {
    rds: {
        host: 'localhost',
        port: '6379'
    },
    mysql: {
        host: 'localhost',
        user: 'root',
        password: '1234567890',
        port: '3306'
    }
}

const database = {
    prod: 'pocket_rocket',
    dev: 'pocket_rocket'
}

const tensorflowApi = 'http://localhost:8501/v1/models/recmodel:predict'

module.exports = {
    dbClient,
    database,
    modelApi: tensorflowApi
}