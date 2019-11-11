# This Dockerfile is added only as a mechanism for making the source code
# accessible to https://github.com/allenai/scholar-reader.
#
# Both this project and that referenced above use Google Cloud Build, which
# currently doesn't support submodules. To work around this restriction we
# publish the image resulting from this `Dockerfile`, so that it can be 
# used to pull the code that'd otherwise be accessible as a submodule.
# 
# The [Skiff](https://github.com/allenai/skiff) platform ultimately intends to
# port to Github Actions. At that point in time we can delete this `Dockerfile`
# and the associated code that's downstream.
FROM alpine:3.10.3
WORKDIR /pdfjs
COPY . .
