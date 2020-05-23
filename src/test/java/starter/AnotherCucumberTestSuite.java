package starter;

import io.cucumber.junit.CucumberOptions;
import io.github.bonigarcia.wdm.WebDriverManager;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.Before;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(
        plugin = {"pretty"},
        features = "src/test/resources/features",
        tags = {},
        strict = true
)
public class AnotherCucumberTestSuite {

    @Before
    public void setup() {
        WebDriverManager.chromedriver().setup();
    }
}
