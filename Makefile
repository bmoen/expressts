#!/usr/bin/env bash

PATH := node_modules/.bin:$(PATH)
SHELL := /bin/bash

.PHONY: clean app

app: dist/app.js

clean:
	rm -rf dist

dist/app.js:
	tsc --outDir dist
