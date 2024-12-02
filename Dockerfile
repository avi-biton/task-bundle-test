# Start with a minimal base image
FROM scratch

# Add Tekton resource YAMLs to the image
COPY tasks/echo-task-bundle/0.1/echo-task-bundle.yaml echo-task-bundle.yaml

# Specify the Tekton bundle label
LABEL tekton.dev/bundle=1
LABEL io.artifacthub.package.readme-url="https://raw.githubusercontent.com/avi-biton/task-bundle-test/refs/heads/main/README.md"
LABEL org.opencontainers.image.description="This is a test bundle"
