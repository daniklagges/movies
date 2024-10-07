// app/javascript/controllers/application.js
import { Application } from "@hotwired/stimulus"
import { importControllersFrom } from "@hotwired/stimulus-importmap-autoloader"

const application = Application.start()
importControllersFrom("controllers", application)
