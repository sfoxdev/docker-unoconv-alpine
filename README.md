Unoconv is a simple tool for converting any type of files to PDF documents.

1. Create directory in your server:
mkdir /opt/unoconv

2. To convert .docx(or any other type of file) to .pdf put your file into directory /opt/unoconv

3. Run container:
docker run -d --env-file=docker.env -v /opt/unoconv:/tmp --name unoconv sfoxdev/unoconv-alpine
or
docker run -d -e FILEEXT=docx -e TIMETOEXIT=300 -v /opt/unoconv:/tmp --name unoconv sfoxdev/unoconv-alpine

- FILEEXT - file extension to convert
- TIMETOEXIT - timeout in seconds to terminate convertion
