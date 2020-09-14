# NGINX

## Create a new virtual host:

1. Create a file:
```bash
touch /etc/nginx/sites-available/website
```

2. Add the following configure options:
```bash
server {
        listen 80;
        listen [::]:80;
        root /path/to/dir;
        index index.html;
}
```

3. Create a new link:
```bash
ln -s /etc/nginx/sites-available/website /etc/nginx/sites-enabled/website
```

4. Test the configuration:
```bash
service nginx configtest
```

5. If thats OK, reload the service:
```bash
service nginx reload
```
