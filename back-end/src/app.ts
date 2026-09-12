import express, { json, urlencoded } from 'express'
import cookieParser from 'cookie-parser'
import logger from 'morgan'

import indexRouter from './routes/index.js'
import usersRouter from './routes/users.js'
import customersRouter from './routes/customers.js'
import { errorHandler } from './errors/errorHandler.js'

const app = express()

app.use(logger('dev'))
app.use(json())
app.use(urlencoded({ extended: false }))
app.use(cookieParser())

/***************** ROTAS *************************/

app.use('/', indexRouter)
app.use('/users', usersRouter)

app.use('/customers', customersRouter)
app.use((_req, res) => { res.status(404).json({ error: 'Rota não encontrada.' }) })
app.use(errorHandler)

export default app
