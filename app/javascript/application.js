// app/javascript/controllers/application.js
import { Application } from "@hotwired/stimulus"

const application = Application.start()

// Automatically import all controllers in the controllers directory
const context = require.context("controllers", true, /\.js$/)
context.keys().forEach((key) => {
  const controller = context(key).default
  application.register(key.split("/").pop().replace(".js", ""), controller)
})
