package definitions;
import io.cucumber.java.en.Then;

import static support.TestContext.getDriver;

public class GermanT {
    @Then("I refresh the page")
    public void iRefreshThePAge(){
        getDriver().navigate().refresh();
    }
}
