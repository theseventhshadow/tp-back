# Tienda Backend

API REST para la tienda de perritos, desplegada en AWS EKS con CI/CD automatizado.

## Tecnologías
- Node.js 18
- Express.js
- MySQL2
- Docker
- AWS EKS
- GitHub Actions

## Endpoints

| Método | Endpoint | Descripción |
|--------|----------|-------------|
| GET | `/api/productos` | Obtener todos los productos |
| GET | `/api/productos/:id` | Obtener un producto por ID |
| POST | `/api/productos` | Crear un nuevo producto |
| PUT | `/api/productos/:id` | Actualizar un producto |
| DELETE | `/api/productos/:id` | Eliminar un producto |
| GET | `/api/health` | Health check para Kubernetes |

## Variables de entorno

| Variable | Descripción | Valor por defecto |
|----------|-------------|-------------------|
| `DB_HOST` | Host de MySQL | `tienda-db` |
| `DB_USER` | Usuario de MySQL | `root` |
| `DB_PASSWORD` | Contraseña de MySQL | (desde Secret) |
| `DB_NAME` | Nombre de la base de datos | `tienda_perritos` |
| `DB_PORT` | Puerto de MySQL | `3306` |
| `PORT` | Puerto del servidor | `3001` |

## Estructura del repositorio

## Intentos de despliegue

- 1
- 2