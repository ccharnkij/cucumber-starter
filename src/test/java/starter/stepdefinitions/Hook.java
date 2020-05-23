package starter.stepdefinitions;

import io.cucumber.java.Before;
import io.github.bonigarcia.wdm.WebDriverManager;
import net.serenitybdd.cucumber.suiteslicing.SerenityTags;

public class Hook {

    @Before
    public void setBatchTags() {

        WebDriverManager.chromedriver().setup();
        SerenityTags.create().tagScenarioWithBatchingInfo();
    }
}
