function iou_value = Bounding_Box_IoU(rect1,rect2)
    area_overlap = (min([rect1(1)+rect1(3),rect2(1)+rect2(3)])-max([rect1(1),rect2(1)]))*(min([rect1(2)+rect1(4),rect2(2)+rect2(4)])-max([rect1(2),rect2(2)]));
    area1_without_overlap = rect1(3)*rect1(4)-area_overlap;
    area2_without_overlap = rect2(3)*rect2(4)-area_overlap;
    iou_value = area_overlap/(area_overlap+area1_without_overlap+area2_without_overlap);
end