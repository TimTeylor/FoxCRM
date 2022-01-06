const express = require('express')
const app = express()
const port = 5000

const headMenu = [
    {img: '', title: 'каталог'}
]

app.get('/', (req, res) => {
    res.send('Hello world 123')
})

app.listen(port, () => {
    console.log(`Example app listening at http://localhost:${port}`)
})