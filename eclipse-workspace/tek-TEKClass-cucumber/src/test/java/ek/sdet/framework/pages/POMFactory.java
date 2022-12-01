package ek.sdet.framework.pages;

import tek.sdet.framework.base.BaseSetup;

public class POMFactory extends BaseSetup {
    private RetailHomePage homePage;

    public POMFactory() {
        this.homePage = new RetailHomePage();

    }

    public RetailHomePage homePage() {
        return this.homePage;
    }

	public Signin signInPage() {
		// TODO Auto-generated method stub
		return this.signInPage();
	}

	public RetailHomePage accountpage() {
		// TODO Auto-generated method stub
		return this.accountpage();
	}

	public RetailHomePage orderpage() {
		// TODO Auto-generated method stub
		return this.orderpage();
	}

	

	

	

	
	}

	
	

