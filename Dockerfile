FROM alpine:3.6
RUN apk update && apk add python3=3.6.1-r2
COPY ksepy /app
WORKDIR /app
RUN pip3 install -r requirements.txt
#CMD ["./script.sh"]
#CMD ["tail", "-f", "/dev/null"]
CMD ["python3", "__main__.py", ">", "script.out", "2>&1"]