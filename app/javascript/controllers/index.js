// This file is auto-generated by ./bin/rails stimulus:manifest:update
// Run that command whenever you add a new controller or create them with
// ./bin/rails generate stimulus controllerName

import { application } from "./application"

import EditMemoryController from "./edit_memory_controller"
application.register("edit-memory", EditMemoryController)

import EditNoteController from "./edit_note_controller"
application.register("edit-note", EditNoteController)

import FlatpickrController from "./flatpickr_controller"
application.register("flatpickr", FlatpickrController)

import GsapController from "./gsap_controller"
application.register("gsap", GsapController)

import HelloController from "./hello_controller"
application.register("hello", HelloController)

import KeyButtonController from "./key_button_controller"
application.register("key-button", KeyButtonController)

import PhotoPreviewController from "./photo_preview_controller"
application.register("photo-preview", PhotoPreviewController)
