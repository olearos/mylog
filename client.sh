#!/bin/bash

input="$1"

curl http://localhost:12345/?version=0.1&text=${input}
