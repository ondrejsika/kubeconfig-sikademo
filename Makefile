-include Makefile.local.mk

SUFFIX ?=

update-config:
	git pull
	(cd .. && make kubeconfig-get)
	cat ../kubeconfig.yml | base64 > ./kubeconfig$(SUFFIX)
	git add kubeconfig$(SUFFIX)
	git commit -m "[auto] Update kubeconfig$(SUFFIX) (base64)" kubeconfig$(SUFFIX)
	git push
