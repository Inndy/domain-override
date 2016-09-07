# domain-overrider

Typo with domain name is annoying me. It's a simple python script creating a
http server and listen on 80 port, redirect you request from wrong doamin to
the right one.

## Usage

Use [`install.sh`](install.sh) to install system service and modify your
`/etc/hosts` file to force the domain point to `127.0.0.1`.

## License

[MIT License](LICENSE)
