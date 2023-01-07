# demo-tableau

This repository demonstrates how to deploy Tableau dashboards on OpenAnalytics ShinyProxy using an NGINX server. The dashboards are hosted on Tableau Online and forwarded to ShinyProxy, which then renders them using NGINX.

## Prerequisites

- Docker
- A Tableau Online account

## Usage

1. Clone this repository and navigate to the directory:

```bash
git clone https://github.com/<USERNAME>/demo-tableau.git
cd demo-tableau
```


2. Replace $DASHBOARD in index.html with the URL of the Tableau dashboard you want to display:

```bash
sed -i 's|$DASHBOARD|'"${DASHBOARD}"'|' /usr/share/nginx/html/index.html
```

3. Build the Docker image:
```bash
./build-image.sh
```

4. Run the Docker container:
```bash
docker run -p 80:80 scaledbi-demo-tableau
```
The Tableau dashboard should now be accessible at http://localhost.


