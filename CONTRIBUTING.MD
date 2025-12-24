# CONTRIBUTING

## How to run Dockerfile locally

```docker run -dp 5005:5000 -w //app -v "$('D:\My Projects\PYTHON\FLASK\app1')://app"  IMAGE_NAME sh -c "flask run --host 0.0.0.0"
```