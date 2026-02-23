FROM jenkins/jenkins:lts

USER root

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs

# Install Python3 and pip3
RUN apt-get update && \
    apt-get install -y python3 python3-pip

# Install Playwright dependencies and python3-venv
RUN apt-get install -y libnss3 libatk1.0-0 libatk-bridge2.0-0 libcups2 libxkbcommon0 \
    libxcomposite1 libxrandr2 libxdamage1 libxfixes3 libglib2.0-0 libasound2 libgbm1 libgtk-3-0 python3-venv

# Install Allure CLI
RUN npm install -g allure-commandline --save-dev

USER jenkins