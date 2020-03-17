apply_local:
	kubectl apply -k overlays/local

apply_dev:
	kubectl apply -k overlays/dev

apply_prd:
	kubectl apply -k overlays/prd

destroy_local:
	kubectl delete -k overlays/local

destroy_dev:
	kubectl delete -k overlays/dev

destroy_prd:
	kubectl delete -k overlays/prd
