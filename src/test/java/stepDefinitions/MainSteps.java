package stepDefinitions;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

import java.util.List;

public class MainSteps {
    @Given("User is on NetBanking landing page")
    public void user_is_on_net_banking_landing_page() {
        // Write code here that turns the phrase above into concrete actions
    }
    @Given("User is on Practice landing page")
    public void user_is_on_practice_landing_page() {
        // Write code here that turns the phrase above into concrete actions
    }
    @When("User Signup into application")
    public void user_signup_into_application(List<String> data) {
        System.out.println(data.get(0));
        System.out.println(data.get(1));
        System.out.println(data.get(2));
    }
    @When("^User login into application with (.+) and password (.+)$")
    public void user_login_into_application_with_and_password(String username, String password) {

        System.out.println(username);
        System.out.println(password);
    }
    @Then("Home Page is displayed")
    public void home_page_is_displayed() {
    }
    @Then("Cards are displayed")
    public void cards_are_displayed() {
    }

    @Given("setup the entries in database")
    public void setup_the_entries_in_database(){
        System.out.println("Antar");
    }
    @When("launch the browser from config")
    public void launch_the_browser_from_config(){

    }
    @When("hit the home page url of banking site")
    public void hit_the_home_page_url_of_banking_site(){

    }
}
