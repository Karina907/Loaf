# This module focuses on retrieving cooking or baking article, parsing the content, and extracting relevant information.

import requests
from recipe_scrapers import scrape_html, scrape_me
from fake_useragent import UserAgent

def fetch_and_parse_recipe(url: str):

    # (1) Check if the URL is valid and supported by recipe_scrapers
    try:
        scraper = scrape_me(url)
        scraper_json= scraper.to_json()
        return scraper_json
    except:
        pass

    # (2) If the URL is not supported, attempt to fetch and parse the recipe using wild_mode
    try:
        ua = UserAgent()

        headers = {
            "User-Agent": ua.random
        }

        response = requests.get(url, headers=headers)
        html = response.text

        scraper = scrape_html(html, org_url=url, wild_mode=True)
        scraper_json= scraper.to_json()
        return scraper_json
    except:
        print("Unable to fetch or parse the recipe from the provided URL.")
