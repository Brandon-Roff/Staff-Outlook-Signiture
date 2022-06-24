
<h1 align="center">
  <img alt="cgapp logo" src="https://img-prod-cms-rt-microsoft-com.akamaized.net/cms/api/am/imageFileData/RE1Mu3b?ver=5c31" width="224px"/><br/>
  <br></br>
  Staff Outlook Signiture
</h1>
<br></br>
<p align="center">Create a new Email Signiture for <b>Outlook</b> with <b>(Visual Basic, HTML).</b/></p>

<p align="center">
<img alt="GitHub" src="https://img.shields.io/github/license/brandon-roff/Staff-Outlook-Signiture?color=green">
<img alt="GitHub issues" src="https://img.shields.io/github/issues/brandon-roff/Staff-Outlook-Signiture?color=green">
<img alt="GitHub pull requests" src="https://img.shields.io/github/issues-pr/brandon-roff/staff-outlook-signiture">
<img alt="GitHub last commit" src="https://img.shields.io/github/last-commit/brandon-roff/staff-outlook-signiture">
</p>


## ⚡️ Quick start

First, Step is to [download](https://github.com/Brandon-Roff/Staff-Outlook-Signiture/archive/refs/heads/main.zip) it,

>This will only work on windows 7, 8, 10, 11

<b>Open up your download folder and Unzip it</b>
>Typcially would be C:\Users\YourUsername\Downlaods

<b> Open it Up in you favouite text editor mine is VS Code</b>
<br></br>

>Click to install...

<a href="https://code.visualstudio.com/" target="_blank"> <img src="https://raw.githubusercontent.com/devicons/devicon/master/icons/vscode/vscode-original.svg" alt="VS Code" width="60" height="60" /> </a>

<b> Your Code should look something like this... </b>

```VBS
strTelephone = " 01708 865 180"
strMobile = objUser.Mobile
'strShowMobile = objUser.showMobile'
strFax = objUser.FacsimileTelephoneNumber
strEmail = objUser.mail
strWebsite = "https://website.com/"
strAcademyName = "School or Buisness name"
strAddress = "Address"
strLogo = "\\path\to\logo"
strLogo1 = "\\path\to\logo"
strLogo2 = "\\path\to\logo"
strDDI = objUser.homePhone
strWH = objUser.workingHours
strFollowUsText = "\\path\to\SocialMedia\FollowUs.png"
strFacebookLogo = "\\path\to\facebook.png"
strTwitterLogo = "\\path\to\SocialMedia\twitter.png"
strInstagramLogo = "\\path\to\SocialMedia\instagram.png"
```



### 🐳 Docker-way to quick start

If you don't want to install Create Go App CLI to your system, you feel free to using our official [Docker image](https://hub.docker.com/r/koddr/cgapp) and run CLI from isolated container:

```bash
docker run --rm -it -v ${PWD}:${PWD} -w ${PWD} koddr/cgapp:latest [COMMAND]
```

> 🔔 Please note: the `deploy` command is currently **unavailable** in this image.
## 📖 Project Wiki

The best way to better explore all the features of the **Create Go App CLI** is to read the project [Wiki](https://github.com/create-go-app/cli/wiki) and take part in [Discussions](https://github.com/create-go-app/cli/discussions) and/or [Issues](https://github.com/create-go-app/cli/issues). Yes, the most frequently asked questions (_FAQ_) are also [here](https://github.com/create-go-app/cli/wiki/FAQ).

## ⚙️ Commands & Options

### `create`

CLI command for create a new project with the interactive console UI.

```bash
cgapp create [OPTION]
```

| Option | Description                                              | Type   | Default | Required? |
|--------|----------------------------------------------------------|--------|---------|-----------|
| `-t`   | Enables to define custom backend and frontend templates. | `bool` | `false` | No        |

![cgapp_create](https://user-images.githubusercontent.com/11155743/116796937-38160080-aae9-11eb-8e21-fb1be2750aa4.gif)

- 📺 Full demo video: https://recordit.co/OQAwkZBrjN
- 📖 Docs: https://github.com/create-go-app/cli/wiki/Command-create

### `deploy`

CLI command for deploy Docker containers with your project via Ansible to the remote server.

> 🔔 Make sure that you have [Python 3.8+](https://www.python.org/downloads/) and [Ansible 2.9+](https://docs.ansible.com/ansible/latest/installation_guide/intro_installation.html#installing-ansible-on-specific-operating-systems) installed on your computer.
```bash
cgapp deploy [OPTION]
```

| Option | Description                                                                                            | Type   | Default | Required? |
|--------|--------------------------------------------------------------------------------------------------------|--------|---------|-----------|
| `-k`   | Prompt you to provide the remote user sudo password (_a standard Ansible `--ask-become-pass` option_). | `bool` | `false` | No        |

![cgapp_deploy](https://user-images.githubusercontent.com/11155743/116796941-3c421e00-aae9-11eb-9575-d72550814d7a.gif)

- 📺 Full demo video: https://recordit.co/ishTf0Au1x
- 📖 Docs: https://github.com/create-go-app/cli/wiki/Command-deploy

## 📝 Production-ready project templates

### Backend

- Backend template with Golang built-in [net/http](https://golang.org/pkg/net/http/) package:
  - [`net/http`](https://github.com/create-go-app/net_http-go-template) — simple REST API with CRUD and JWT auth.
- Backend template with [Fiber](https://github.com/gofiber/fiber):
  - [`fiber`](https://github.com/create-go-app/fiber-go-template) — complex REST API with CRUD, JWT auth with renew token, DB and cache.
- Backend template with [go-chi](https://github.com/go-chi/chi):
  - [`chi`](https://github.com/create-go-app/chi-go-template) — a basic application with health
    check.

### Frontend

- Pure JavaScript frontend template:
  - `vanilla` — generated template with pure JavaScript app.
  - `vanilla-ts` — generated template with pure TypeScript app.
- Frontend template with [React](https://reactjs.org/):
  - `react` — generated template with a common React app.
  - `react-ts` — generated template with a TypeScript version of the React app.
- Frontend template with [Preact](https://preactjs.com/):
  - `preact` — generated template with a common Preact app.
  - `preact-ts` — generated template with a TypeScript version of the Preact app.
- Frontend template with [Next.js](https://nextjs.org/):
  - `next` — generated template with a common Next.js app.
  - `next-ts` — generated template with a TypeScript version of the Next.js app.
- Frontend template with [Nuxt 3](https://v3.nuxtjs.org/):
  - `nuxt3` — generated template with a common Nuxt 3 app.
- Frontend template with [Vue.js](https://vuejs.org/):
  - `vue` — generated template with a common Vue.js app.
  - `vue-ts` — generated template with a TypeScript version of the Vue.js app.
- Frontend template with [Svelte](https://svelte.dev/):
  - `svelte` — generated template with a common Svelte app.
  - `svelte-ts` — generated template with a TypeScript version of the Svelte app.
- Frontend template with [Lit](https://lit.dev/) web components:
  - `lit-element` — generated template with a common Lit app.
  - `lit-element-ts` — generated template a TypeScript version of the Lit app.

> ☝️ Frontend part will be generate using awesome tool [Vite.js](https://vitejs.dev/) under the hood. So, you'll always get the latest version of `React`, `Preact`, `Vue`, `Svelte`, `Lit` or pure JavaScript/TypeScript templates for your project! And the `Next.js` and `Nuxt 3` frontend parts will be generated using the `create-next-app` and `nuxi` utilities.
>
> Please make sure that you have `npm` version `7` or higher installed to create the frontend part of the project correctly. If you run the `cgapp create` command using our [Docker image](https://hub.docker.com/r/koddr/cgapp), `npm` of the correct version is **already** included.
## 🚚 Pre-configured Ansible roles

### Web/Proxy server

- Roles for run Docker container with [Traefik Proxy](https://traefik.io/traefik/):
  - `traefik` — configured Traefik container with a simple ACME challenge via CA server.
  - `traefik-acme-dns` — configured Traefik container with a complex ACME challenge via DNS provider.
- Roles for run Docker container with [Nginx](https://nginx.org):
  - `nginx` — pure Nginx container with "the best practice" configuration.

> ✌️ Since Create Go App CLI `v2.0.0`, we're recommend to use **Traefik Proxy** as default proxy server for your projects. The main reason: this proxy provides _automatic_ SSL certificates from Let's Encrypt out of the box. Also, Traefik was built on the Docker ecosystem and has a _really good looking_ and _useful_ Web UI.
### Database

- Roles for run Docker container with [PostgreSQL](https://postgresql.org/):
  - `postgres` — configured PostgreSQL container with apply migrations for backend.

### Cache (key-value storage)

- Roles for run Docker container with [Redis](https://redis.io/):
  - `redis` — configured Redis container for backend.

## ⭐️ Project assistance

If you want to say **thank you** or/and support active development of `Staff Outlook Signiture`:

- Add a [GitHub Star](https://github.com/create-go-app/cli) to the project.



Together, we can make this project **better** every day! 😘

