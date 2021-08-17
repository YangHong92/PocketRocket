const fs = require('fs');
const readline = require('readline');
const _ = require('lodash');

function loadItemEmbToRedis(redis, callback) {
    const itemFS = fs.createReadStream(__dirname + '/item2vecEmb.csv');

    const rl = readline.createInterface({
        input: itemFS,
        crlfDelay: Infinity
    });
    // Note: we use the crlfDelay option to recognize all instances of CR LF
    // ('\r\n') in input.txt as a single line break.

    rl.on('line',  line => {
        const key = _.split(line, ':')[0]
        const value = _.split(line, ':')[1]
     
        redis.exists('m'+key).then( exists => { 
            if(!exists) {
                //storing the key as a unique identifier and stringifying the whole object while storing the data
                //applying JSON.parse while extracting it
                redis.set('m'+key, JSON.stringify(value));
            }
        })
    }).on('error', error => {
        callback(error, null);
    });
    callback(null, 'redis item loading complete!')
}

function loadUserEmbToRedis(redis, callback) {
    const userFS = fs.createReadStream(__dirname + '/userEmb.csv');

    const rl = readline.createInterface({
        input: userFS,
        crlfDelay: Infinity
    });
    // Note: we use the crlfDelay option to recognize all instances of CR LF
    // ('\r\n') in input.txt as a single line break.

    rl.on('line',  line => {
        const key = _.split(line, ':')[0]
        const value = _.split(line, ':')[1]
     
        redis.exists('u'+key).then( exists => { 
            if(!exists) {
                //storing the key as a unique identifier and stringifying the whole object while storing the data
                //applying JSON.parse while extracting it
                redis.set('u'+key, JSON.stringify(value));
            }
        })
    }).on('error', error => {
        callback(error, null);
    });
    callback(null, 'redis user loading complete!')
}

module.exports = {
    loadItemEmbToRedis: loadItemEmbToRedis,
    loadUserEmbToRedis: loadUserEmbToRedis
}