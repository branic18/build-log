Worked on trying to follow the instructions I took down watching the [Fast.AI](http://fast.ai/) 1.1 video last week.

Started to follow the instructions then came across a duckduckgo api error. Saw the duckduckgo doesn’t like scrapers. I thought about how to get data into the Kaggle notebook just to get some kind of result from the model.

Decided to upload my own photos to create an AI Art Critic to tell the difference between different art styles. I created 4 different folders that had 5 images each for a dataset of 20 images, which is a small set, but it was something to work with.

With this I came across a “ValueError: This DataLoader does not contain any batches” error, but I did some debugging and the images were present, but Kaggle kept displaying the error that there weren’t any batches to load.

Found out it was because I had a smaller dataset and so [Fast.AI](http://fast.ai/) wasn’t registering my images. So I changed bs=32 to bs=4 to accommodate for the smaller data size.

With this I was able to view some images for the dataset, so I moved onto the model training using the code in the [Fast.AI](http://fast.ai/)Kaggle notebook.

My results were terrible as expected of a smaller data set: Overfitting

| **epoch** | **train_loss** | **valid_loss** | **error_rate** | **time** |
| --------- | -------------- | -------------- | -------------- | -------- |
| 0         | 3.015391       | 1.953379       | 1.000000       | 00:01    |
| **epoch** | **train_loss** | **valid_loss** | **error_rate** | **time** |
| 0         | 1.918715       | 1.577027       | 0.666667       | 00:01    |
| 1         | 2.714693       | 1.449189       | 0.333333       | 00:00    |
| 2         | 2.202782       | 1.078556       | 0.333333       | 00:00    |
Although the error rate did start to get better as it made more iterations.

I tried testing my model on other images via url, I used 2 cubism images and they both returned as ‘Surrealism’, with over .9 confidence which is obviously wrong, but it was interesting to load my own dataset, create my model, view the result, and even test it on new data, even though it was wrong.

Next time going to look more into the DuckDuckGo API issue or just find another way of finding a lot of images, so the model will be more accurate and not overfitted.

Further testing:

|         | Actual Art Style                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                     | AI Prediction | Confidence |
| ------- | -------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- | ------------- | ---------- |
| Test 1  | Cubism                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Surrealism    | Over .9    |
| Test 2  | Cubism                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                               | Surrealism    | Over .9    |
| Test 3  | Impressionism [https://www.parblo.com/cdn/shop/articles/5_Famous_Impressionist_Artists_and_Their_Masterpieces.png?v=1561469589](https://www.parblo.com/cdn/shop/articles/5_Famous_Impressionist_Artists_and_Their_Masterpieces.png?v=1561469589)                                                                                                                                                                                                                                                                     | Impressionism | 0.4667     |
| Test 4  | Hyperrealism [https://www.portraitflip.com/wp-content/uploads/2023/10/Hypperealism-Movement-The-Beginning.jpg](https://www.portraitflip.com/wp-content/uploads/2023/10/Hypperealism-Movement-The-Beginning.jpg)                                                                                                                                                                                                                                                                                                      | Surrealism    | 0.5739     |
| Test 5  | Impressionism [https://dropinblog.net/cdn-cgi/image/fit=scale-down,width=700/34257095/files/impressionist-landscape-artists-art-to-art.png](https://dropinblog.net/cdn-cgi/image/fit=scale-down,width=700/34257095/files/impressionist-landscape-artists-art-to-art.png)                                                                                                                                                                                                                                             | Impressionism | 0.6226     |
| Test 6  | Surrealism [https://www.parkwestgallery.com/wp-content/uploads/2018/11/im364320.jpg](https://www.parkwestgallery.com/wp-content/uploads/2018/11/im364320.jpg)                                                                                                                                                                                                                                                                                                                                                        | Surrealism    | 0.9947     |
| Test 7  | Cubism [https://collectionapi.metmuseum.org/api/collection/v1/iiif/489100/1004974/restricted](https://collectionapi.metmuseum.org/api/collection/v1/iiif/489100/1004974/restricted)                                                                                                                                                                                                                                                                                                                                  | Surrealism    | 0.9880     |
| Test 8  | Hyperrealism [https://www.katonahartcenter.com/site/assets/files/9941/hyperrealist-painting-main.750x750.jpg](https://www.katonahartcenter.com/site/assets/files/9941/hyperrealist-painting-main.750x750.jpg)                                                                                                                                                                                                                                                                                                        | Hyperrealism  | 0.4335     |
| Test 9  | Surrealism [https://images.squarespace-cdn.com/content/v1/62c725e56463497d1a422505/1676305961932-CGUVCMHJ7UMA6I8RTO0W/Modern_Surrealism.png?format=2500w](https://images.squarespace-cdn.com/content/v1/62c725e56463497d1a422505/1676305961932-CGUVCMHJ7UMA6I8RTO0W/Modern_Surrealism.png?format=2500w)                                                                                                                                                                                                              | Surrealism    | 0.9986     |
| Test 10 | Impressionism [https://www.christies.com/-/jssmedia/images/features/articles/evergreen/amp-collecting-guide-refresh-2024/72867914-rs_2400-dotcom-jpeg.jpg?h=2386&iar=0&w=2400&rev=d2409a371b704339aa5d91badc4c00c0&hash=cb2c16ce0bc5c9e2f7a6aa16dc551eb2cf51b086](https://www.christies.com/-/jssmedia/images/features/articles/evergreen/amp-collecting-guide-refresh-2024/72867914-rs_2400-dotcom-jpeg.jpg?h=2386&iar=0&w=2400&rev=d2409a371b704339aa5d91badc4c00c0&hash=cb2c16ce0bc5c9e2f7a6aa16dc551eb2cf51b086) | Impressionism | 0.7284     |
Art style testing segmentation: 10 tests

- Cubism: 3
- Surrealism: 2
- Hyperrealism: 2
- Impressionism: 3

Overall testing accuracy: 6/10 test accuracy

- The model is excellent at identifying impressionism art and has clearly gotten more confident the more images I gave it, going from 0.4 confidence, to 0.6 confidence, to 0.7 confidence, all accurate predictions!
- The model is very confident in correctly identifying surrealism when I give it surrealism art. But has a hard time distinguishing cubism from surrealism, when I give it cubism.
- Hyperrealism art was 50% accuracy with about 45% confidence in both tests, but was accurate with the second test (although had lower confidence)