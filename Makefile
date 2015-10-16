erd:
	@echo "Creating ERD File"
	@bundle exec erd

migrate:
	@echo "Migrating Database"
	@rake db:migrate

seed:
	@echo "Seeding Database"
	@rake db:seed
