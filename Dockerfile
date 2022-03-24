FROM node:12-slim

LABEL version="1.0.1"
LABEL repository="https://github.com/sweeetland/action-serverless"
LABEL homepage="https://github.com/sweeetland/action-serverless"
LABEL maintainer="James Sweetland"

LABEL "com.github.actions.name"="GitHub Action for Serverless Framework"
LABEL "com.github.actions.description"="Wraps the Serverless CLI"
LABEL "com.github.actions.icon"="zap"
LABEL "com.github.actions.color"="gray-dark"

# Install serverless globally
RUN yarn global add serverless

ADD "entrypoint.sh" "/entrypoint.sh"
ENTRYPOINT ["/entrypoint.sh"]
CMD ["help"]
