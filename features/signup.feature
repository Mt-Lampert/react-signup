Feature: Signup

    As a guest user
    I want to sign up to the site
    In order to be part of the community.

    # Wireframe: ./images/signup__start.png
    Scenario: Opening the signup page
        When I open the signup page
        Then I see an "empty" user image
        And I see text-inputs for:
            - name and first name
            - email
            - street and number
            - zip code
            - location
        And I see an inactive, dark gray "submit" button

    # Wireframe: ./images/signup__all-filled-in.png
    Scenario: Filling all the fields
        When I have all the text fields filled
        Then the "submit" button turns active and green.

    # Wireframe: ./images/signup__image-progress-bar.png
    Scenario: Adding a user image
        When I click on the "empty" user image
        Then I am asked to choose an image for upload
        When I have choosen one and send it
        Then a circular progress bar will show the progress
        And dynamic text will display the progress below the progress bar.
        When the upload has finished
        Then the uploaded image will replace the "empty" user image.


    # Wireframe: ./images/signup__create-user.png
    Scenario: Validating the form values successfully
        When I fill all required text fields
        And I click the active "submit" button,
        Then the field entries will be validated
        And when they are all valid,
        Then the "Submit" button is replaced by a "Cancel" button and a "Create User"

    # Wireframe:  ./images/signup__valid-entries.png
    Scenario: Signing up after successful validation
        Given validation was successful
        When I click on "Create User"
        Then I see a fake success page.

    # Wireframe: ./images/signup__user-creation-cancelled.png
    Scenario: Cancelling after successful validation
        Given validation was successful
        When I click on "Cancel"
        Then I will be taken back to the fill-out page I saw before
        And I can edit the entries
        And I can click the "submit" button again

    # Wireframe: ./images/signup__invalid-entries.png
    Scenario: Dealing with failed validation
        Given validation happened
        When validation failed
        Then I see a notification that validation failed
        And the erroneous field entries are marked by CSS.
        

