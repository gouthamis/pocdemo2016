class ContentPdf < Prawn::Document

  def initialize(content,view)
    super()
    @content = content
    @view = view


    y_position = cursor - 5
    bounding_box([0, y_position], :width => 550, :height => 70) do
    transparent(0.5) { stroke_bounds }
    move_down 15
    text "Test Report", :align => :center, :font => :Arial, :style => :bold, :size => 15
    text "Product Tested", :font => :"Century Schoolbook", :size => 10, :align => :center
    text "October 26, 2000", :font => :"Century Schoolbook", :size => 10, :align => :center
    text "Product Code", :font => :"Century Schoolbook", :size => 10, :align => :center

  end

move_down 20
  text_box "Company", :kerning => true, :at => [0, y - 40], :align => :left, :font => :"Century Schoolbook", :size => 14
  text_box "Street Address", :kerning => true, :at => [0, y - 55], :align => :left, :font => :"Century Schoolbook", :size => 10
  text_box "City, ST Zip", :kerning => true, :at => [0, y - 70], :align => :left, :font => :"Century Schoolbook", :size => 10
  text_box "Test Person : Hinata", :kerning => true, :at => [0, y - 85], :align => :left, :font => :"Century Schoolbook", :size => 10
  text_box "Testing Date (s) - ", :kerning => true, :at => [0, y - 100], :align => :left, :font => :"Arial", :size => 10, :style => :bold
  text_box "Test Condition : ", :kerning => true, :at => [0, y - 115], :align => :left, :font => :"Arial", :size => 10, :style => :bold
  text_box "gh Package & Product Testing and Consulting, Inc", :kerning => true, :at => [300, y - 40], :align => :right, :font => :"Century Schoolbook", :size => 14
  text_box "Fairfield, Ohio 45014", :kerning => true, :at => [300, y - 70], :align => :right, :font => :"Century Schoolbook", :size => 10
  text_box "January 1, 1980", :kerning => true, :at => [300, y - 100], :align => :right, :font => :"Arial", :size => 10
  text_box "73 degrees Fahrenheit, at 50% Humidity", :kerning => true, :at => [300, y - 115], :align => :right, :font => :"Arial", :size => 10

move_down 100
        y_position = cursor - 5
        bounding_box([0, y_position], :width => 550, :height => 40) do
        transparent(0.5) { stroke_bounds }
        move_down 15
        text "Test Abstract", :align => :center, :font => :Arial, :style => :bold

end

move_down 20

text "Determine if the packed #{@content.name} was capable of withstanding the rigors of the transportation environment. The unit was tested to ASTM D4169 Distribution Cycle td2, Assurance Level td3. The Unit was checked functionally after the entire test cycle. The unit passed the required testing. All testing was performed in compliance with the prescribed test standards except whereas noted in the Test Standard Deviation section of the report." ,
:font => :"Times New Roman", :size => 11, :align => :left

move_down 20
    y_position = cursor - 5
    bounding_box([0, y_position], :width => 550, :height => 40) do
    transparent(0.5) { stroke_bounds }
    move_down 15
    text "Personnel Present During Testing" , :align => :center, :font => :Arial, :style => :bold
end

move_down 20
text " " * 10 + "H. Perry Hock, President and Technical Director, gh Package & Product Testing and Consulting, Inc. D. Kevin Dayton, Manager of Testing Operations and Design, gh Package & Product Testing and Consulting, Inc. Carol Metz, Supervisor, Materials Testing, gh Package & Product Testing and Consulting, Inc. Timothy Glasmeier, Test Engineer, gh Package & Product Testing and Consulting, Inc. Michael Smith, Laboratory Technician, gh Package & Product Testing and Consulting, Inc. Ron Sorrell, Materials Lab Technician, gh Package & Product Testing and Consulting, Inc.",
:font => :"Times New Roman", :size => 11, :align => :left

move_down 5000
    y_position = cursor - 10
    bounding_box([0, y_position], :width => 550, :height => 40) do
    transparent(0.5) { stroke_bounds }
    move_down 15
    text "Test Procedure" , :align => :center, :font => :Arial, :style => :bold
end

move_down 10
text "ASTM D4169 – Standard Practice for Performance Testing of Shipping Containers and Systems Distribution Cycle tp1; Assurance Level tp2",
:font => :"Times New Roman", :size => 11, :align => :left, :style => :bold

move_down 20
text "Schedule A  Handling",
:font => :"Times New Roman", :size => 11, :align => :left, :style => :bold

move_down 30
text "10.2 Manual Handling—" + "The test levels and the test method for this schedule of the distribution cycle are intended to determine the ability of the shipping unit to withstand the hazards occurring during manual handlings, such as loading, unloading, stacking, sorting, or palletizing. The main hazards from these operations are the impacts caused by dropping or throwing. Size, weight, and shape of the shipping unit will affect the intensity of these hazards. Two test method options are permitted, free fall and simulated drop test using shock machines. While the two methods produce similar results, the shock machine method produces more control of orientations of impact; see Test Method D 5487 for limitations of the shock machine method.",
:font => :"Times New Roman", :size => 10, :align => :left

move_down 10
text "10.2.1 For purposes of this procedure, the bottom of a small parcel is the surface on which the parcel rests in its most stable orientation.",
:font => :"Times New Roman", :size => 10, :align => :left

move_down 10
text "10.2.2 Mechanical handling (10.3) may be used when it is anticipated that handling will be by mechanical means only.",
:font => :"Times New Roman", :size => 10, :align => :left

move_down 10
text "10.2.3 Recommended drop heights, the number of drops, the sequence of drops, and the shipping unit orientation at impact are as follows:",
:font => :"Times New Roman", :size => 10, :align => :left

move_down 20
text "Drop Height, in. (mm) Assurance Level",
:font => :"Times New Roman", :size => 10, :align => :left

text_box "Shipping Weight, lb (kg)", :kerning => true, :at => [0, y - 40], :align => :left, :font => :"Arial", :size => 9
text_box "0 to 20 (0 to 9.1)", :kerning => true, :at => [0, y - 55], :align => :left, :font => :"Arial", :size => 8
text_box "20 to 40 (9.1 to 18.1)", :kerning => true, :at => [0, y - 70], :align => :left, :font => :"Arial", :size => 8
text_box "40 to 60 (18.1 to 27.2)", :kerning => true, :at => [0, y - 85], :align => :left, :font => :"Arial", :size => 8
text_box "60 to 80 (27.2 to 36.3)", :kerning => true, :at => [0, y - 100], :align => :left, :font => :"Arial", :size => 8
text_box "80 to 100 (36.3 to 45.4)", :kerning => true, :at => [0, y - 115], :align => :left, :font => :"Arial", :size => 8
text_box "100 to 200 (45.4 to 90.7)", :kerning => true, :at => [0, y - 130], :align => :left, :font => :"Arial", :size => 8

text_box "I", :kerning => true, :at => [155, y - 40], :font => :"Arial", :size => 9
text_box "24 (610)", :kerning => true, :at => [140, y - 55], :align => :left, :font => :"Arial", :size => 8
text_box "21 (533)", :kerning => true, :at => [140, y - 70], :align => :left, :font => :"Arial", :size => 8
text_box "18 (457)", :kerning => true, :at => [140, y - 85], :align => :left, :font => :"Arial", :size => 8
text_box "15 (381)", :kerning => true, :at => [140, y - 100], :align => :left, :font => :"Arial", :size => 8
text_box "12 (305)", :kerning => true, :at => [140, y - 115], :align => :left, :font => :"Arial", :size => 8
text_box "10 (254)", :kerning => true, :at => [140, y - 130], :align => :left, :font => :"Arial", :size => 8

text_box "II", :kerning => true, :at => [230, y - 40], :font => :"Arial", :size => 9
text_box "15 (381)", :kerning => true, :at => [220, y - 55], :align => :left, :font => :"Arial", :size => 8
text_box "13 (330)", :kerning => true, :at => [220, y - 70], :align => :left, :font => :"Arial", :size => 8
text_box "12 (305)", :kerning => true, :at => [220, y - 85], :align => :left, :font => :"Arial", :size => 8
text_box "10 (254)", :kerning => true, :at => [220, y - 100], :align => :left, :font => :"Arial", :size => 8
text_box "9 (229)", :kerning => true, :at => [220, y - 115], :align => :left, :font => :"Arial", :size => 8
text_box "7 (178)", :kerning => true, :at => [220, y - 130], :align => :left, :font => :"Arial", :size => 8

text_box "III", :kerning => true, :at => [310, y - 40], :font => :"Arial", :size => 9
text_box "9 (229)", :kerning => true, :at => [300, y - 55], :align => :left, :font => :"Arial", :size => 8
text_box "8 (203)", :kerning => true, :at => [300, y - 70], :align => :left, :font => :"Arial", :size => 8
text_box "7 (178)", :kerning => true, :at => [300, y - 85], :align => :left, :font => :"Arial", :size => 8
text_box "6 (152)", :kerning => true, :at => [300, y - 100], :align => :left, :font => :"Arial", :size => 8
text_box "5 (127)", :kerning => true, :at => [300, y - 115], :align => :left, :font => :"Arial", :size => 8
text_box "4 (102)", :kerning => true, :at => [300, y - 130], :align => :left, :font => :"Arial", :size => 8


move_down 120
text "NOTE 1—On the last impact of the last manual handling sequence in a distribution cycle, the impact should be made at twice the specified height or equivalent velocity change. (This is the final (sixth) drop in the sequence, not an additional drop.) The drop should be in the impact orientation most likely for a drop to occur, usually the largest face or the bottom. For distribution cycles where any drop orientation is possible (that is, small–parcel environment), this drop should be in the most critical or damage–prone orientation, as defined in Test Method D 5276.",
:font => :"Times New Roman", :size => 9, :align => :left

move_down 10
text "NOTE 2—The equivalent velocity change corresponding to the specified drop height used for the shock machine method shall be calculated as specified in Test Method D 5487.",
:font => :"Times New Roman", :size => 9, :align => :left

move_down 20
text "Post Package/Product Disposition",
:font => :"Times New Roman", :size => 13, :align => :left

move_down 5
text "gh Testing will hold material for a period of one (1) week after testing is completed (unless otherwise instructed by the client).  After this time, gh Testing will dispose of the material or equipment to their discretion or a storage charge at a rate of $3.25 per square foot per month will be charged,",
:font => :"Times New Roman", :size => 9, :align => :left

move_down 20
text "Please contact me should you have questions regarding this testing.

This report respectfully submitted by:",
:font => :"Times New Roman", :size => 9, :align => :center

move_down 60
text "Mr. H. Perry Hock
Technical Director, gh Package & Product Testing and Consulting, Inc.",
:font => :"Times New Roman", :size => 9, :align => :right

move_down 300
text "Images", :align => :center, :size => 14, :style => :bold
move_down 20
text "Scaled to 50% and centered", :align => :center
image "#{Rails.root}/app/assets/images/test.jpg", :scale => 0.5, :position => :center
  end
end
