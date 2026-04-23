import folium
import pandas as pd

countryURL = ("../babbWasHere/countries.geojson")
visitedStatus = pd.read_csv("../babbWasHere/countryStatus.csv")

m = folium.Map(location = [47.3769, 8.5417],
               zoom_start = 5,
               min_zoom = 2,
               tiles = 'https://{s}.basemaps.cartocdn.com/rastertiles/voyager/{z}/{x}/{y}{r}.png',
               attr = '&copy; <a href="https://www.openstreetmap.org/copyright">OpenStreetMap</a> contributors &copy; <a href="https://carto.com/attributions">CARTO</a>'
               )

folium.Choropleth(
    geo_data = countryURL,
    data = visitedStatus,
    columns = ["name", "status"],
    key_on = "feature.properties.name",
    highlight = True,
    fill_color = "GnBu",
    fill_opacity = 0.5,
    line_color = "black",
    line_opacity = 0.6,
    line_weight = 0.4,
    nan_fill_color="white"
).add_to(m)


# Austria
folium.Marker(
    location=[46.9312, 13.2002],
    popup="<b>Obervellach</b>",
    tooltip="Obervellach",
).add_to(m)

folium.Marker(
    location=[48.2082, 16.3738],
    popup="<b>Vienna</b>",
    tooltip="Vienna",
).add_to(m)


# Belgium
folium.Marker(
    location=[50.8476, 4.3572],
    popup="<b>Brussels</b>",
    tooltip="Brussels",
).add_to(m)


# Croatia



# Czechia
folium.Marker(
    location=[50.0755, 14.4378],
    popup="<b>Prague</b>",
    tooltip="Prague",
).add_to(m)



# France



# Germany


# Oman


# Poland



# Romania


# Serbia


# Switzerland
folium.Marker(
    location=[46.0100, 8.9600],
    popup="<b>Lugano</b>",
    tooltip="Lugano",
).add_to(m)


# Thailand


# United Arab Emirates
folium.Marker(
    location=[25.2769, 55.2962],
    popup="<b>Dubai</b>",
    tooltip="Dubai",
).add_to(m)

# United Kingdom



m.save("../babbWasHere/map.html")

# remove legend
# Read the generated HTML file
with open("../babbWasHere/map.html", 'r') as file:
    html_content = file.read()

# Replace the number with a new value
old_width_value = '.attr("width", 450)'  # The desired new width value
new_width_value = '.attr("width", 0)'  # The existing width value
html_content = html_content.replace(str(old_width_value), str(new_width_value))

head_end_index = html_content.find('</head>')
if head_end_index != -1:
    title_tag = '<title>babbWasHere</title>\n'
    html_content = html_content[:head_end_index] + title_tag + html_content[head_end_index:]

# Save the modified HTML back to the file
with open("../babbWasHere/map.html", 'w') as file:
    file.write(html_content)


