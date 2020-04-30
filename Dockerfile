FROM reactnativecommunity/react-native-android:latest


# Installing grade 6.3
RUN mkdir /opt/gradle && \
    cd /opt/gradle && \
    curl -LO "https://services.gradle.org/distributions/gradle-6.3-bin.zip" && \
    unzip -d /opt/gradle gradle-6.3-bin.zip && \
    cd ../.. && \
    ls /opt/gradle/gradle-6.3 

ENV PATH="/opt/gradle/gradle-6.3/bin:${PATH}"


# Installing build tools
RUN apt-get update && \
    apt-get install -y \
    build-essential \
    ruby \
    ruby-dev


# Installing fastlane
ENV LC_ALL=en_US.UTF-8
ENV LANG=en_US.UTF-8
RUN gem install fastlane


# Installing bundle
RUN gem install bundler

# Installing envinfo
RUN npm i -g envinfo

# Installing expo-cli
RUN npm i -g  expo-cli
