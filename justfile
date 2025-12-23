# justfile for testing on developer machine
# test source, then packaged source

DBN := "travis_ci_test"

[script]
test:
    psql -c 'create database {{ DBN }}' -U postgres || true
    # using source directly
    for i in tests/test_*; do nim --path:. r $i;done

    # using nimble package
    nimble install -y
    for i in tests/test_*; do nim r $i;done
    psql -c 'drop database {{ DBN }}' -U postgres

    echo "All tests passed"
