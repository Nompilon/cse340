app.get("/test-classifications", async (req, res) => {
  const data = await invModel.getClassifications()
  console.log(data.rows)
  res.send(data.rows)
})