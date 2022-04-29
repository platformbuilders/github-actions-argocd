# ArgoCD

GitHub action used to sync app into argocd

keep in your mind: this action made to some scenarios into some customers Builders, if you want to use this action, maybe you'll need made changes.

## Inputs

- **app_id:** The App ID;
- **argocd_appenv:** The environment argocd
- **argocd_username:** The username argocd
- **argocd_password:** The password argocd


**OBS.:** All inputs are **required**

## Outputs

There are no outputs for this action

## Example usage

```yaml
      - name: ArgoCD Sync
        runs-on: <Self hosted runner in kubernetes cluster>
        uses: platformbuilders/github-actions-argocd@master
        with:
          app_id: '<gitops-repo-name>'
          argocd_appenv: '< gitops-repo-url >'
          argocd_username: 'ARGOCD_USERNAME'
          argocd_password: 'ARGOCD_PASSWORD'
```

## How to send updates?
If you wants to update or make changes in module code you should use the **develop** branch of this repository, you can test your module changes passing the `@develop` in module calling. Ex.: