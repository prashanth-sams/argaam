# Ruby Cucumber Framework
> Generic ruby cucumber framework using selenium webdriver

### Features

- Allure report
- Cucumber feature - cucumber - step-definition
- Cross browser support
- Logger
- Screenshots on failure

## Docker

##### Build Docker image
```bash
docker build -t <image_name> .
```

##### Docker container 
```bash
docker run -d -t <image_name>
```

Test runner
----------
##### Rake runner
```bash
rake spec
```

##### Allure report
```bash
rake allure
allure generate reports/allure-results-json/ --clean && allure open
```

###### custom allure html output folder
```bash
allure generate reports/allure-results-json/ -o reports/allure-results-html --clean && allure open reports/allure-results-html/
```

##  Browser
```bash
# chrome
rake allure BROWSER=chrome

# firefox
rake allure BROWSER=firefox
```

##### Xvfb headless mode
```bash
source /usr/local/rvm/scripts/rvm
 
export DISPLAY=:20
Xvfb :20 -screen 0 1366x768x16 &
 
cucumber features/scenario/demo/google.feature
```

##### Browser headless mode
```bash
source /usr/local/rvm/scripts/rvm
cucumber features/scenario/demo/google.feature MODE=headless
```

## Logs
```bash
rake allure LOGGER=ON
```
