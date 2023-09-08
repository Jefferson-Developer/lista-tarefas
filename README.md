# Aplicativo Modular de Lista de Tarefas Flutter

Este é um aplicativo Flutter de lista de tarefas que permite aos usuários gerenciar suas tarefas de forma eficiente. O aplicativo possui recursos de autenticação pelo Firebase para criar contas e fazer login, além de armazenar as tarefas localmente usando o SQFlite para uma experiência offline confiável. Ele também é construído de forma modular, usando o Provider para gerenciar o estado da aplicação de maneira eficaz.

## Recursos

- **Autenticação Firebase**: Os usuários podem criar contas e fazer login para acessar suas listas de tarefas pessoais.

- **Gerenciamento de Tarefas**: Os usuários podem adicionar, editar, marcar como concluídas e excluir tarefas.

- **Armazenamento Local (SQFlite)**: As tarefas são armazenadas localmente usando o SQFlite para garantir que os dados estejam disponíveis mesmo offline.

- **Gerenciamento de Estado com Provider**: O aplicativo é modular e utiliza o Provider para gerenciar o estado da aplicação de forma eficaz, garantindo uma separação limpa entre a lógica de negócios e a interface do usuário.

- **Design Responsivo**: O aplicativo é projetado para funcionar em várias telas e tamanhos de dispositivos.

## Requisitos de Instalação

Certifique-se de que você tenha as seguintes ferramentas instaladas em seu sistema:

- [Flutter](https://flutter.dev/docs/get-started/install)
- [Firebase](https://firebase.google.com/docs/flutter/setup)

## Configuração do Firebase

Para configurar o Firebase no aplicativo, siga estas etapas:

1. Crie um projeto Firebase em [Firebase Console](https://console.firebase.google.com/).

2. Adicione um aplicativo Flutter ao seu projeto Firebase.

3. Copie o arquivo `google-services.json` fornecido pelo Firebase e cole-o na pasta `android/app` do seu projeto Flutter.

4. Adicione suas configurações de Firebase ao arquivo `android/app/build.gradle`.

5. Ative as autenticações necessárias no console Firebase para permitir login de email e senha.

6. Certifique-se de que o Firebase Authentication esteja configurado de acordo com as diretrizes do aplicativo.

## Configuração do SQFlite

O SQFlite é usado para armazenar tarefas localmente. Não é necessária nenhuma configuração adicional, pois as dependências do SQFlite já estão incluídas no `pubspec.yaml`.

## Configuração do Provider

O aplicativo utiliza o Provider para gerenciar o estado da aplicação de forma modular. Os diferentes módulos podem ser encontrados nos diretórios correspondentes dentro do projeto.

Certifique-se de entender como o Provider funciona e como os diferentes providers estão configurados no aplicativo para aprimorar ou modificar funcionalidades específicas.

## Executando o Aplicativo

Após configurar o Firebase, o SQFlite e o Provider, você pode executar o aplicativo em seu dispositivo ou emulador com os seguintes comandos:

```shell
flutter pub get
flutter run
