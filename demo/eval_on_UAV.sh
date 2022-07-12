for i in Videos_mp4/*.mp4
	do name=`echo "$i" | cut -d'.' -f1 | cut -d'/' -f2`
	echo "$name"
#	ffmpeg -i "$i" "baseline_eval/${name}.mkv"
	python demo.py --config-file ../configs/COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x.yaml --video-input "$i" --output "baseline_eval/${name}.mp4"  --opts MODEL.WEIGHTS detectron2://COCO-InstanceSegmentation/mask_rcnn_R_50_FPN_3x/137849600/model_final_f10217.pkl
done
