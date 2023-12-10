FROM openjdk
EXPOSE 9090
WORKDIR /app
COPY . /app
RUN javac Hello.java
CMD ["java","Hello"]
