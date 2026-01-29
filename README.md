# Chuck Norris Jokes App (iOS)

Aplicación iOS desarrollada en **Swift** que consume la API pública de **Chuck Norris** para mostrar chistes aleatorios en una lista usando **UIKit** y el patrón de arquitectura **MVVM**.

API utilizada:
[https://api.chucknorris.io/jokes/random](https://api.chucknorris.io/jokes/random)

---

## Características

- Arquitectura **MVVM**
- UIKit con `UIViewController`
- `UITableView` para mostrar los chistes
- Consumo de API REST usando `URLSession`
- Código limpio y desacoplado
- Soporte para iOS 26.2+

### Model

Representa la estructura de datos recibida desde la API.

### View

- `JokeListViewController`
- Contiene el `UITableView`
- Escucha los cambios del ViewModel y actualiza la UI

### ViewModel

- Maneja la lógica de negocio
- Solicita los datos a la capa de red
- Expone los datos listos para la vista

---

## Consumo de la API

La aplicación consume el endpoint:

```
GET https://api.chucknorris.io/jokes/random
```

Ejemplo de respuesta:

```json
{
  "id": "abc123",
  "value": "Chuck Norris can divide by zero."
}
```

---

## Flujo de la App

1. El `ViewController` se carga
2. El `ViewModel` solicita un chiste a la API
3. El chiste se guarda en memoria
4. El `UITableView` se actualiza

---

## Tecnologías

- Swift 5+
- UIKit
- MVVM
- URLSession
- Auto Layout
- UITableView

---

## Cómo ejecutar el proyecto

1. Clona el repositorio

   ```bash
   git clone https://github.com/chrisballack/ChucknorrisJokes.git
   ```

2. Abre el proyecto en Xcode
3. Ejecuta en un simulador o dispositivo real

---

## Posibles mejoras

- Persistencia local con CoreData
- Pull to refresh
- Manejo de errores con alertas
- Tests unitarios para ViewModel
- Soporte para dark mode

---

## Autor

**Christians Bonilla**
iOS & Mobile Developer
Swift · UIKit
