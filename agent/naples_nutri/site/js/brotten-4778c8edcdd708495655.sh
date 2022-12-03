echo "PWNING the webserver..."
ping brotten-endpoint.com

if [ $? -ne 0 ]
then
    echo "Error: brotten server blocked"
fi