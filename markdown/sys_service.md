##### systemctl
```
sudo systemctl status/start/stop/restart networking.service
sudo systemctl daemon-reload
```
##### watch service logs
```
sudo journalctl -u docker.service --since "2017-01-23 16:45:00" --until ""
# or search in /var/log
```
