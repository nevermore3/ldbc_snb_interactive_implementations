#!/bin/bash

set -e
set -o pipefail

cd "$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
cd ..

BENCHMARK_PROPERTIES_FILE=${1:-driver/benchmark.properties}

java -cp target/umbra-0.3.7-SNAPSHOT.jar org.ldbcouncil.snb.driver.Client -P ${BENCHMARK_PROPERTIES_FILE}
