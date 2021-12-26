const express = require('express')
const app = express()
const port = 3000

app.get('/', (req, res) => res.json([{
  name: 'Ibrahim BOUKHENNA',
  email: 'boukhenna.ibrahim@gmail.com'
},{
  name: 'Ibrahim USTHB',
  email: 'ibrahim.907@gmail.com'
}]))

app.listen(port, () => {
  console.log(`Example app listening at http://localhost:${port}`)
})