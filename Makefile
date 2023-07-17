run-sample-sp:
	docker run \
		--rm \
		-d \
		-p 8080:8080 \
		--name saml-sp-sample \
		kxn4t/saml-sp-sample:0.0.1

open-sample-sp:
	open http://localhost:8080/

run-keycloak:
	docker run \
		--rm \
		-d \
		-p 18080:8080 \
		--name keycloak \
		-e KEYCLOAK_ADMIN=admin \
		-e KEYCLOAK_ADMIN_PASSWORD=admin \
		quay.io/keycloak/keycloak:18.0.0 \
		start-dev

open-keycloak:
	open http://localhost:18080/admin
