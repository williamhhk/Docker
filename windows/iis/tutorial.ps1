# Give the container a name, and run the docker image
docker run -d -p 80:80 --name iistest iistest

#  Get IIS Container IP address
$ipaddress = docker inspect --format="{{.NetworkSettings.Networks.nat.IPAddress}}"  iistest

$url = "http://" + $ipaddress
# For quick use, does not require shell to be restarted.

Start-Process "$env:ProgramFiles\Internet Explorer\iexplore.exe" -ArgumentList $url
