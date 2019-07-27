const config = {
  mysql: {
    host     : 'host',
    user     : 'userName',
    password : 'password',
    port     : 3306,
    database : 'mysqlDbName',
    connectionLimit : 10
  },
  jwt: {
    secret : "secret",
    expire : "30m" // 30분
  },
  file: {
    rootPath : '/',
    uploadPath : 'uploads'
  },
  s3: {
    accessKeyId: 'accessKey',
    secretAccessKey: 'secretAccessKey',
    region: 'ap-northeast-2',
    bucketName: 'bucketName'
  }
};

module.exports = config;