deploy:
	@sudo docker compose down
	@sudo docker compose build
	@sudo docker compose up -d

run-backup:
	@if [ -d /home/ubuntu/Sandy/MySQL/data ]; then \
		echo "Eliminando carpeta existente: /home/ubuntu/Sandy/MySQL/data"; \
		sudo rm -r /home/ubuntu/Sandy/MySQL/data; \
	else \
		echo "La carpeta no existe, no se elimina: /home/ubuntu/Sandy/MySQL/data"; \
	fi
	@sudo docker compose down
	@sudo docker compose build
	@sudo docker compose up -d