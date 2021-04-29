apply_local:
	kubectl apply -k aw/overlays/local

apply_dev:
	kubectl apply -k aw/overlays/dev

apply_prd:
	kubectl apply -k aw/overlays/prd

destroy_local:
	kubectl delete -k aw/overlays/local

destroy_dev:
	kubectl delete -k aw/overlays/dev

destroy_prd:
	kubectl delete -k aw/overlays/prd
