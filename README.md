# Unoconv based on Alpine Edge

Unoconv is a simple tool for converting any type of files to PDF documents.

[![Docker Build Status](https://img.shields.io/docker/build/sfoxdev/unoconv-alpine.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/automated/sfoxdev/unoconv-alpine.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/pulls/sfoxdev/unoconv-alpine.svg?style=flat-square)]()
[![Docker Build Status](https://img.shields.io/docker/stars/sfoxdev/unoconv-alpine.svg?style=flat-square)]()

## Usage

### Create directory in your server
```
mkdir /opt/unoconv
```

### To convert .docx(or any other type of file) to .pdf put your file into directory /opt/unoconv

### Run container
```
docker run -d --env-file=docker.env -v /opt/unoconv:/tmp --name unoconv sfoxdev/unoconv-alpine
```

or
```
docker run -d -e FILEEXT=docx -e TIMETOEXIT=300 -v /opt/unoconv:/tmp --name unoconv sfoxdev/unoconv-alpine
```

- `FILEEXT` - file extension to convert
- `TIMETOEXIT` - timeout in seconds to terminate convertion
